package net.ukr.service;

import net.ukr.domain.Message;
import net.ukr.domain.User;
import net.ukr.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;

    public Page<Message> messageList(Pageable pageable, String filter){

        if (filter != null && !filter.isEmpty()) {
            return  messageRepo.findByTag(filter, pageable);
        } else {
            return  messageRepo.findAll(pageable);
        }

    }


    public Page<Message> messageListForUser(Pageable pageble, User currentUser, User author) {
        return messageRepo.findByUser(pageble, author);

    }
}
